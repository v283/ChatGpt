using ChatGPT.Services;
using ChatGPT.ViewModels;
using ChatGPT.Views;
using CommunityToolkit.Maui;
using CommunityToolkit.Maui.Media;
using Microsoft.Extensions.Logging;
using SkiaSharp.Views.Maui.Controls.Hosting;
using ChatGPT.Platforms;
using Microsoft.Extensions.Logging;
using SpeechToTextImplementation = ChatGPT.Platforms.SpeechToTextImplementation;

namespace ChatGPT
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder.UseMauiApp<App>()
            .UseSkiaSharp()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("Mona-Sans-Bold.ttf", "MonaSansBold");
                fonts.AddFont("Mona-Sans-Medium.ttf", "MonaSansMedium");
            }).UseMauiCommunityToolkit();

            builder.Services.AddSingleton<IOpenAIService, OpenAIService>();
            builder.Services.AddTransient<ConversationViewModel>();
            builder.Services.AddSingleton<ConversationView>();
            builder.Services.AddSingleton<ISpeechToText, SpeechToTextImplementation>();
#if DEBUG
            builder.Logging.AddDebug();
#endif
 
            return builder.Build();
        }
    }
}