.class public Lcom/twitter/library/network/l;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/network/l;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.twitter.library.network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".debug.DebugHttpOperationClientFactory"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/network/l;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/network/l;->d:I

    .line 41
    iput-boolean v1, p0, Lcom/twitter/library/network/l;->e:Z

    .line 42
    iput-boolean v1, p0, Lcom/twitter/library/network/l;->f:Z

    .line 52
    iput-object p1, p0, Lcom/twitter/library/network/l;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/library/network/l;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/twitter/library/network/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/network/l;->a:Lcom/twitter/library/network/l;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/twitter/library/network/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/library/network/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/library/network/l;->a:Lcom/twitter/library/network/l;

    .line 48
    :cond_0
    sget-object v0, Lcom/twitter/library/network/l;->a:Lcom/twitter/library/network/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/twitter/library/network/l;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/library/network/l;->e()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/library/network/l;->c()I

    move-result v0

    .line 72
    iget v1, p0, Lcom/twitter/library/network/l;->d:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 73
    :cond_0
    iput v0, p0, Lcom/twitter/library/network/l;->d:I

    .line 74
    iget v0, p0, Lcom/twitter/library/network/l;->d:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :pswitch_0
    new-instance v0, Lcom/twitter/library/network/ag;

    iget-object v1, p0, Lcom/twitter/library/network/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/library/network/ag;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/library/network/l;->d()Lcom/twitter/internal/network/g;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-static {}, Lcom/twitter/library/network/j;->b()Lcom/twitter/internal/network/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/twitter/library/network/j;->b()Lcom/twitter/internal/network/g;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/twitter/library/network/l;->d()Lcom/twitter/internal/network/g;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    goto :goto_0

    .line 88
    :pswitch_3
    new-instance v0, Lcom/twitter/library/network/ah;

    iget-object v1, p0, Lcom/twitter/library/network/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/library/network/ah;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    goto :goto_0

    .line 93
    :pswitch_4
    new-instance v0, Lcom/twitter/library/network/ai;

    iget-object v1, p0, Lcom/twitter/library/network/l;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/library/network/ai;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twitter/library/network/j;->a(Lcom/twitter/internal/network/g;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private c()I
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcvo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x5

    .line 121
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/library/network/l;->f:Z

    if-eqz v0, :cond_2

    .line 117
    const/4 v0, 0x6

    goto :goto_0

    .line 118
    :cond_2
    iget-boolean v0, p0, Lcom/twitter/library/network/l;->e:Z

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x3

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Lcom/twitter/internal/network/g;
    .locals 4

    .prologue
    .line 134
    :try_start_0
    sget-object v0, Lcom/twitter/library/network/l;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/network/l;->c:Landroid/content/Context;

    aput-object v3, v1, v2

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/network/g;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not initialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/network/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    const/16 v1, 0xbb8

    .line 147
    const-string/jumbo v0, "spdy_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/network/l;->e:Z

    .line 148
    const-string/jumbo v0, "android_network_okhttp3_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/network/l;->f:Z

    .line 150
    const/4 v2, 0x0

    .line 151
    invoke-static {}, Lcom/twitter/internal/network/f;->f()I

    move-result v4

    .line 152
    invoke-static {}, Lcom/twitter/internal/network/f;->g()I

    move-result v5

    .line 157
    const-string/jumbo v0, "android_network_connect_timeout_ms"

    invoke-static {v0, v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 158
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 161
    :cond_0
    const-string/jumbo v3, "android_network_read_timeout_ms"

    invoke-static {v3, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v3

    .line 162
    if-ge v3, v1, :cond_4

    .line 166
    :goto_0
    if-ne v0, v4, :cond_1

    if-eq v1, v5, :cond_3

    .line 167
    :cond_1
    invoke-static {v0, v1}, Lcom/twitter/internal/network/f;->a(II)V

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_1
    const-string/jumbo v1, "set_polling_header_using_visibility_enabled"

    .line 173
    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 174
    invoke-static {}, Lcom/twitter/library/network/j;->c()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 175
    invoke-static {v1}, Lcom/twitter/library/network/j;->c(Z)V

    .line 179
    :cond_2
    invoke-direct {p0, v0}, Lcom/twitter/library/network/l;->a(Z)V

    .line 180
    return-void

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/library/network/l;->a(Z)V

    .line 58
    new-instance v0, Lcom/twitter/library/network/m;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/m;-><init>(Lcom/twitter/library/network/l;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 64
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/library/network/l;->a(Z)V

    .line 68
    return-void
.end method
