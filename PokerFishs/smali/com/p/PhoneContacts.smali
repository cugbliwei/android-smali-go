.class public Lcom/p/PhoneContacts;
.super Ljava/lang/Object;
.source "PhoneContacts.java"


# static fields
.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private contacts:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    .line 16
    sput-object v0, Lcom/p/PhoneContacts;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAllContacts()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/p/PhoneContacts;->contacts:Lorg/json/JSONObject;

    .line 24
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .local v6, "arrays":Lorg/json/JSONArray;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 27
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    sget-object v2, Lcom/p/PhoneContacts;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 30
    .local v10, "phoneCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 31
    const/4 v11, 0x0

    .line 32
    .local v11, "phoneNumber":Ljava/lang/String;
    const/4 v7, 0x0

    .line 33
    .local v7, "contactName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 34
    .local v9, "infos":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 35
    .local v12, "tels":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 56
    .end local v7    # "contactName":Ljava/lang/String;
    .end local v9    # "infos":Lorg/json/JSONObject;
    .end local v11    # "phoneNumber":Ljava/lang/String;
    .end local v12    # "tels":Lorg/json/JSONArray;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/p/PhoneContacts;->contacts:Lorg/json/JSONObject;

    const-string v2, "infos"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/p/PhoneContacts;->contacts:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 36
    .restart local v7    # "contactName":Ljava/lang/String;
    .restart local v9    # "infos":Lorg/json/JSONObject;
    .restart local v11    # "phoneNumber":Ljava/lang/String;
    .restart local v12    # "tels":Lorg/json/JSONArray;
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 37
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    new-instance v9, Lorg/json/JSONObject;

    .end local v9    # "infos":Lorg/json/JSONObject;
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .restart local v9    # "infos":Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "name"

    invoke-virtual {v9, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .end local v12    # "tels":Lorg/json/JSONArray;
    .local v13, "tels":Lorg/json/JSONArray;
    :try_start_2
    const-string v1, "\\D"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    const-string v1, "tel"

    invoke-virtual {v9, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v13

    .line 50
    .end local v13    # "tels":Lorg/json/JSONArray;
    .restart local v12    # "tels":Lorg/json/JSONArray;
    :goto_2
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 47
    :catch_0
    move-exception v8

    .line 48
    .local v8, "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 57
    .end local v7    # "contactName":Ljava/lang/String;
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v9    # "infos":Lorg/json/JSONObject;
    .end local v11    # "phoneNumber":Ljava/lang/String;
    .end local v12    # "tels":Lorg/json/JSONArray;
    :catch_1
    move-exception v8

    .line 58
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v7    # "contactName":Ljava/lang/String;
    .restart local v9    # "infos":Lorg/json/JSONObject;
    .restart local v11    # "phoneNumber":Ljava/lang/String;
    .restart local v13    # "tels":Lorg/json/JSONArray;
    :catch_2
    move-exception v8

    move-object v12, v13

    .end local v13    # "tels":Lorg/json/JSONArray;
    .restart local v12    # "tels":Lorg/json/JSONArray;
    goto :goto_3
.end method
