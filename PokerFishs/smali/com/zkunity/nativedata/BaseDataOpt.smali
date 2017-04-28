.class public abstract Lcom/zkunity/nativedata/BaseDataOpt;
.super Ljava/lang/Object;
.source "BaseDataOpt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v3, ""

    .line 21
    .local v3, "readline":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 31
    if-eqz v1, :cond_0

    .line 33
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "readline":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_1
    return-object v5

    .line 23
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "readline":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 26
    .end local v3    # "readline":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 27
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    if-eqz v0, :cond_2

    .line 33
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 39
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 34
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "readline":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 35
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 34
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "readline":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 35
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 28
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 29
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    if-eqz v0, :cond_2

    .line 33
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 34
    :catch_4
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 30
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 31
    :goto_5
    if-eqz v0, :cond_3

    .line 33
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 37
    :cond_3
    :goto_6
    throw v5

    .line 34
    :catch_5
    move-exception v2

    .line 35
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 30
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 28
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 26
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public saveData(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "isAppend"    # Z

    .prologue
    .line 44
    const/4 v4, 0x1

    .line 45
    .local v4, "isOpt":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 51
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    if-eqz v1, :cond_1

    .line 63
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 69
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :goto_2
    return v5

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 59
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 69
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 64
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 65
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 61
    :goto_5
    if-eqz v0, :cond_3

    .line 63
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    :cond_3
    :goto_6
    throw v5

    .line 64
    :catch_4
    move-exception v2

    .line 65
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 60
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 58
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3
.end method
