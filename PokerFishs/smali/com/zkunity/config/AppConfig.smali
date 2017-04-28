.class public Lcom/zkunity/config/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static configs:Lcom/zkunity/json/MJsonObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v0, p0}, Lcom/zkunity/json/MJsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    invoke-virtual {v0, p0}, Lcom/zkunity/json/MJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initConfigs()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/zkunity/json/MJsonObject;

    invoke-direct {v0}, Lcom/zkunity/json/MJsonObject;-><init>()V

    sput-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    .line 11
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "plat_url"

    const-string v2, "http://dyq-zsdk-t.pokerfishs.com/"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "pay_url"

    const-string v2, "http://dyq-zsdk-pay-t.pokerfishs.com"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "wx_app_id"

    const-string v2, "wxbffae0764e6dbd19"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "wx_partner_id"

    const-string v2, "1299952001"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "alipay_partner"

    const-string v2, "2088121535733015"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "alipay_seller_id"

    const-string v2, "master@pokerfishs.com"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "alipay_rsa"

    const-string v2, "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAKNPWtIoK1vJe+leiusHHzeAZDAtlnDMZDM7fCrADrIcqkRKigVupvL7kXLHb83cesvvYruewuGfCetgV2tAIZCIlOp8dSSeQ6Lge+oUiLpx4aiE9cKgTcbV2FhIGQM3LhGjevuDgfYsPGO8PYkAzyhjdRovrJ5w5GSm1BzXvrgVAgMBAAECgYAXxwgMLTkS5iUad192lNTgudrcgOa0ia3VH8YWW1xIZpAL3WZ3IANCwYoN0iffK0jdxH71nkn1m7hQAvj3bqD0NMEmIDYu2r7ulA7aatN/ETeJnmVvjEMKLaPC/V0HKn/AgZ9fWaprY/HZQRU2fOVhMyBku6e/DPC4jFEBW9NbiQJBANCV8C6CRTPrkmR7LUL0ABNqtLPQimu777RflnZxR/Qi9Lwxl8lEoYE8pcDMJ1d/nu8C2OMZq9t3A+pHvJ4cOlsCQQDIbrkFPAhwQIbhRRWhZho8YDuczQ/PMeOPodeFI5zMD2DngSrSmzP7E5Av9gjNNgwLLmHQc4n8neXi+qaZ/AJPAkBNoTAVryggTbFbMjjDLVqF33XHYnrR480vnU+7Xye/Ze8dx3tNTfypw6+Q1Kpjtzyoia+8vcYnVOEhJXe+hJT3AkA1RdChhopLo6r19xG/u06f24gcrhhUntL4GzEYbxW+2xuLjLZgEeZoBpQdW0yNlp7u3d4btInpfeJbSPm9FdFbAkBncc3/DXICwhaEX0BXJA08BWM592Q1xp7JkDxFtkA0ylhBflLoU8IB9pVJqav6aaf0si6jSN7acVAr3PbeXpHA"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "google_base_key"

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAz33v3OJ7WUp3RDu0q7mZcpQzw6AJauQPnc6EZNT+tuAbrJr6aEVgazmt6Bimy+hsK+cIq6dMbtiirYDMbapt9TYZOqttETDOc2bVeHDXBq+NLNV1pIHQhS5ag4/naVBdkwtG6kP5/Ac6lIE0CAHAbUaF3i+JdyCI5R8Edo6ZLClH/q3K2BKCrTsH76Z23wB3hx7X6ENTs88dqLraAyrrobesOFcGZoiOeMFk/m8z2PbDiCsaNE7DmwEgomshO6xCxFZnubhleVD/z9K+D77CagPmEsjLva7fR8Zq3auzhGfexz0skhIw8q1T+FiZybwjNaOZA9V9HtATGYXGbrDnMwIDAQAB"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "paypal_client_id_test"

    const-string v2, "AbjcZlaBu6HeyjFQSjBnTEbAXdhH6LmkpbnEa73uXj-oiYYZDTj98lct_fF6jgA6oZUJQsYmX9xe5D3U"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "paypal_client_id"

    const-string v2, "AbbwSxulrB_O5zJ0t0F2waJ4eBOHrxwz_AIOfkvBhLkI_t4C31ssx207vB1AVrUFs0wf1VMo1m9N6KEo"

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/zkunity/config/AppConfig;->configs:Lcom/zkunity/json/MJsonObject;

    const-string v1, "confValue"

    const v2, 0xeffe4c0

    invoke-virtual {v0, v1, v2}, Lcom/zkunity/json/MJsonObject;->put(Ljava/lang/String;I)V

    .line 24
    return-void
.end method
