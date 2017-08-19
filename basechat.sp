void SendChatToAdmins(int from, const char[] message)
{
	int fromAdmin = CheckCommandAccess(from, "sm_chat", ADMFLAG_CHAT);
	for (int i = 1; i <= MaxClients; i++)
	{
		if (IsClientInGame(i) && (from == i || CheckCommandAccess(i, "sm_chat", ADMFLAG_CHAT)))
		{
			if (!BaseComm_IsClientGagged(i))
			{
				CPrintToChat(i, "{slategray}[ {darkgrey}Yetkiliye Mesaj {slategray}] {white}%s%N{lightgrey}: %s", fromAdmin ? "(Yetkili) " : "(Oyuncu) ", from, message);
			}
		}
	}
}
