using ChatGPT.Constants;
using OpenAI_API;


namespace ChatGPT.Services
{
    public class OpenAIService : IOpenAIService
    {

        OpenAI_API.Chat.Conversation conversation;
        public OpenAIService()
        {
            var authentication = new APIAuthentication(Constants.APIConstants.OpenAIToken);


            var api = new OpenAIAPI(authentication);

            // Create a new conversation with ChatGPT
            conversation = api.Chat.CreateConversation();

        }

        public async Task<string> AskQuestion(string query)
        {
            conversation.AppendUserInput(query);
            return await conversation.GetResponseFromChatbot();
        }

    }
}
