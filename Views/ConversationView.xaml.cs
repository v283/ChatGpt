using System.Globalization;
using ChatGPT.ViewModels;
using CommunityToolkit.Maui.Media;
using System.Globalization;

namespace ChatGPT.Views;

public partial class ConversationView : ContentPage
{
    public static string SelectedLanguage = "us";

    private ISpeechToText speechToText;
    private CancellationTokenSource tokenSource = new CancellationTokenSource();

    public Command ListenCommand { get; set; }

    private string txt = "";
    public string RecognitionText
    { get => txt;
        set
        {
            txt = value;
            entry.Text = value;
        }
    }


    public ConversationView(ConversationViewModel vm, ISpeechToText speechToText)
    {
        InitializeComponent();

        BindingContext = vm;

        vm.CollectionView = myCollectionView;
        vm.ConversationView = mainPage;

        this.speechToText = speechToText;




    }

    private async void Listen(object sender, TappedEventArgs args)
    {
        var isAuthorized = await speechToText.RequestPermissions();
        if (isAuthorized)
        {
            try
            {
                RecognitionText = await speechToText.Listen(CultureInfo.GetCultureInfo("en-us"),
                    new Progress<string>(partialText =>
                    {
                        if (DeviceInfo.Platform == DevicePlatform.Android)
                        {
                            RecognitionText = partialText;
                        }
                        else
                        {
                            RecognitionText += partialText + " ";
                        }

                        OnPropertyChanged(nameof(RecognitionText));
                    }), tokenSource.Token);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
        else
        {
            await DisplayAlert("Permission Error", "No microphone access", "OK");
        }
    }

    private void ListenCancel()
    {
        tokenSource?.Cancel();
    }

    public void OnUsa(object sender, TappedEventArgs args)
    {
        ukraine.IsVisible = false;
        usa.IsVisible = true;
        SelectedLanguage = "us";


    }
    public void OnUkraine(object sender, TappedEventArgs args)
    {
        ukraine.IsVisible = true;
        usa.IsVisible = false;
        SelectedLanguage = "ua";
    }



}