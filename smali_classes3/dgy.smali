.class public Ldgy;
.super Ldgx;
.source "Twttr"


# instance fields
.field private final a:Ldgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldgw",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ldgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldgw",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ldgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldgw",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ldgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldgw",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/network/g;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ldgx;-><init>()V

    .line 34
    invoke-interface {p1}, Lcom/twitter/util/network/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ldgw;

    const-string/jumbo v2, "setUseSessionTickets"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Ldgw;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_0
    iput-object v0, p0, Ldgy;->a:Ldgw;

    .line 37
    invoke-interface {p1}, Lcom/twitter/util/network/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ldgw;

    const-string/jumbo v2, "setHostname"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Ldgw;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_1
    iput-object v0, p0, Ldgy;->b:Ldgw;

    .line 40
    invoke-interface {p1}, Lcom/twitter/util/network/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ldgw;

    const-string/jumbo v2, "setAlpnProtocols"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, [B

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Ldgw;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_2
    iput-object v0, p0, Ldgy;->c:Ldgw;

    .line 43
    invoke-interface {p1}, Lcom/twitter/util/network/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ldgw;

    const-class v0, [B

    const-string/jumbo v2, "getAlpnSelectedProtocol"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Ldgw;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :cond_0
    iput-object v1, p0, Ldgy;->d:Ldgw;

    .line 45
    return-void

    :cond_1
    move-object v0, v1

    .line 34
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 37
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 40
    goto :goto_2
.end method

.method public static a(Ldgx;)V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    const-class v0, Ldgx;

    const-string/jumbo v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-static {}, Lcvo;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-class v1, Ljava/lang/reflect/Field;

    const-string/jumbo v2, "modifiers"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Ldgy;->d:Ldgw;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-object v1

    .line 150
    :cond_1
    iget-object v0, p0, Ldgy;->d:Ldgw;

    invoke-virtual {v0, p1}, Ldgw;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ldgy;->d:Ldgw;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ldgw;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 155
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ldey;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcjw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 124
    const-string/jumbo v0, "TwitterNetwork"

    invoke-static {v0, p2, p3}, Lcjw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const-string/jumbo v0, "TwitterNetwork"

    invoke-static {v0, p2, p3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {v0}, Ldey;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 169
    :cond_0
    throw v0

    .line 170
    :catch_1
    move-exception v0

    .line 173
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    if-eqz p2, :cond_0

    iget-object v0, p0, Ldgy;->a:Ldgw;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ldgy;->a:Ldgw;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ldgw;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Ldgy;->b:Ldgw;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Ldgy;->b:Ldgw;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Ldgw;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    iget-object v0, p0, Ldgy;->c:Ldgw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldgy;->c:Ldgw;

    invoke-virtual {v0, p1}, Ldgw;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ldgy;->b(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 87
    iget-object v1, p0, Ldgy;->c:Ldgw;

    invoke-virtual {v1, p1, v0}, Ldgw;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 99
    :try_start_0
    const-string/jumbo v0, "android.security.NetworkSecurityPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "isCleartextTrafficPermitted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 103
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :goto_1
    invoke-super {p0, p1}, Ldgx;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    :goto_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .line 105
    :catch_4
    move-exception v0

    goto :goto_1
.end method
