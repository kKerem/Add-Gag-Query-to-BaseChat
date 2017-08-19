# Basechat.sp

As you know chat to admins don't check client is gagged or not.

### First step

Put it on top line
```
#include <basecomm>
```

### Second step

Add this instead of "if (IsClientInGame(i) && (from == i || Ch..." in void **"SendChatToAdmins"** (Line: 363 in version 1.8.0.6015)
```
  if (!BaseComm_IsClientGagged(i))
  {
    CPrintToChat(i, "[SM] %s%N: %s", fromAdmin ? "(Admin) " : "(Player) ", from, message);
  }
```

### Last step

Compile the file.
