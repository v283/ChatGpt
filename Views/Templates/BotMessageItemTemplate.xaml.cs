using Android.Views;

namespace ChatGPT.Views.Templates;

public partial class BotMessageItemTemplate : Grid
{
    private Grid _parentGrid;

    public BotMessageItemTemplate()
    {
        InitializeComponent();

        borderText.SizeChanged += BorderText_SizeChanged;
    }

    private void ParentGrid_SizeChanged(object sender, EventArgs e)
    {
        var parentGrid = (Grid)sender;

        _parentGrid = parentGrid;

        BorderText_SizeChanged(borderText, e);
    }

    private void BorderText_SizeChanged(object sender, EventArgs e)
    {
        var borderText = (Border)sender;

        var widthMaxBorderText = _parentGrid.Width - 45;

        if (borderText.Width > widthMaxBorderText)
        {
            Dispatcher.Dispatch(() =>
            {
                borderText.WidthRequest = widthMaxBorderText;
            });
        }
    }

    private async void OnPlaySound(object sender, TappedEventArgs e)
    {
        var views = (Label)sender;
        string word = views.Text;

        IEnumerable<Locale> locales = await TextToSpeech.Default.GetLocalesAsync();
        Locale localeL;
        // Find the locale corresponding to English - United States
        if (ConversationView.SelectedLanguage == "us")
        {
            localeL = locales.FirstOrDefault(locale =>
            locale.Language == "en" && locale.Country == "US");
        }
        else
        {
            localeL = locales.FirstOrDefault(locale =>
    locale.Language == "uk" && locale.Country == "UA");
        }


        if (localeL == null) { return; }

        SpeechOptions options = new SpeechOptions()
        {
            Pitch = 1f,   // 0.0 - 2.0
            Volume = 1f, // 0.0 - 1.0
            Locale = localeL

        };

        await TextToSpeech.Default.SpeakAsync(word, options);
    }
}