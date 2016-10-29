.class public Lczg;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()I
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static a(Ljava/lang/Class;)J
    .locals 5

    .prologue
    .line 87
    :try_start_0
    const-class v0, Landroid/os/Debug;

    const-string/jumbo v1, "countInstancesOfClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 90
    :goto_0
    return-wide v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 104
    :try_start_0
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v0

    const-string/jumbo v2, "txt"

    invoke-interface {v0, v2}, Lcom/twitter/platform/p;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :try_start_3
    const-string/jumbo v4, ""

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    sget-object v6, Lcom/twitter/util/collection/CollectionUtils;->a:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 113
    invoke-static {v2}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v3}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 117
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 116
    :goto_1
    invoke-static {v0}, Ldbt;->d(Ljava/io/File;)V

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    .line 113
    :goto_2
    invoke-static {v2}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v3}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_3
    invoke-static {v1}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 114
    invoke-static {v3}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v0

    .line 113
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 111
    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 34
    :try_start_0
    const-class v0, Landroid/database/CursorWindow;

    const-string/jumbo v1, "sWindowToPidMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 37
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    :goto_0
    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 54
    :try_start_0
    new-instance v7, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v7}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 55
    invoke-static {v7}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 56
    const-class v0, Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "getOtherPss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 57
    const-class v0, Landroid/os/Debug$MemoryInfo;

    const-string/jumbo v1, "getOtherLabel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move v6, v3

    move v1, v3

    move v2, v3

    .line 58
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    .line 59
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v4

    invoke-virtual {v9, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v2

    .line 58
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 60
    :sswitch_0
    const-string/jumbo v10, "Cursor"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "Ashmem"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    .line 62
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v4

    invoke-virtual {v8, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 63
    goto :goto_2

    .line 66
    :pswitch_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v4

    invoke-virtual {v8, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v1, v2

    .line 67
    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    move v1, v3

    move v2, v3

    .line 76
    :cond_1
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_3

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x75707bbf -> :sswitch_1
        0x78faff76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
