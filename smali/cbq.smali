.class public Lcbq;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:J

.field private static b:Lcbs;

.field private static c:Lazb;


# direct methods
.method public static a()J
    .locals 2

    .prologue
    .line 109
    sget-wide v0, Lcbq;->a:J

    return-wide v0
.end method

.method public static declared-synchronized a(J)V
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcbq;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/twitter/config/c;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 122
    sput-wide p0, Lcbq;->a:J

    .line 123
    invoke-static {p0, p1}, Lcom/twitter/config/d;->a(J)V

    .line 124
    sget-object v0, Lcbq;->b:Lcbs;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcbq;->b:Lcbs;

    invoke-virtual {v0, p0, p1}, Lcbs;->b(J)V

    .line 127
    :cond_0
    invoke-static {p0, p1}, Lcom/twitter/config/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit v1

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(JLcof;Lcoj;)V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcbs;->a(JLcof;Lcoj;)V

    .line 194
    return-void
.end method

.method public static a(JLcoj;)V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcbq;->f()Lcof;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcbq;->a(JLcof;Lcoj;)V

    .line 188
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcom/twitter/config/c;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 58
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcbq;->c:Lazb;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lazb;

    invoke-direct {v0, p0}, Lazb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcbq;->c:Lazb;

    .line 61
    sget-object v0, Lcbq;->c:Lazb;

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/g;)V

    .line 64
    :cond_0
    :try_start_0
    sget v0, Lbka;->feature_switch_overrides:I

    .line 65
    invoke-static {p0, v0}, Laze;->a(Landroid/content/Context;I)Lcoa;

    move-result-object v0

    .line 66
    new-instance v1, Lazd;

    invoke-direct {v1, v0}, Lazd;-><init>(Lcoa;)V

    invoke-static {v1}, Lcom/twitter/config/d;->a(Lcom/twitter/config/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcbq;->b:Lcbs;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcbs;

    invoke-direct {v0, p0}, Lcbs;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/g;)V

    .line 74
    invoke-static {v0}, Lcbq;->a(Lcbs;)V

    .line 76
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/config/d;->a(Z)V

    .line 78
    invoke-static {}, Lcbq;->i()Z

    move-result v1

    .line 79
    invoke-static {}, Lcom/twitter/config/j;->a()Lrx/o;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    .line 80
    invoke-virtual {v2, v0}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v2, Lcbr;

    invoke-direct {v2, v1}, Lcbr;-><init>(Z)V

    .line 81
    invoke-virtual {v0, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 90
    :cond_2
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcbw;->a(Landroid/content/Context;J)V

    .line 162
    invoke-static {p0, p1, p2}, Lazf;->b(Landroid/content/Context;J)V

    .line 163
    invoke-static {p1, p2}, Lazf;->b(J)V

    .line 165
    sget-wide v0, Lcbq;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcbq;->b()V

    .line 168
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JLcoj;)V
    .locals 1

    .prologue
    .line 181
    invoke-static {p0, p1, p2, p3}, Lazf;->a(Landroid/content/Context;JLcoj;)V

    .line 183
    return-void
.end method

.method private static a(Lcbs;)V
    .locals 4

    .prologue
    .line 93
    const-class v0, Lcom/twitter/config/c;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 94
    sput-object p0, Lcbq;->b:Lcbs;

    .line 95
    sget-object v0, Lcbq;->b:Lcbs;

    if-eqz v0, :cond_0

    sget-wide v0, Lcbq;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcbq;->b:Lcbs;

    sget-wide v2, Lcbq;->a:J

    invoke-virtual {v0, v2, v3}, Lcbs;->b(J)V

    .line 98
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 113
    const-class v1, Lcbq;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcbs;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcbq;->a(J)V

    .line 118
    return-void
.end method

.method public static b(J)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcbq;->b:Lcbs;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcbq;->b:Lcbs;

    invoke-virtual {v0, p0, p1}, Lcbs;->d(J)V

    .line 134
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcbq;->b:Lcbs;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcbq;->b:Lcbs;

    invoke-virtual {v0}, Lcbs;->c()V

    .line 140
    :cond_0
    return-void
.end method

.method public static c(J)Z
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcbs;->a(J)Z

    move-result v0

    return v0
.end method

.method public static d()Lazb;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcbq;->c:Lazb;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcbq;->c:Lazb;

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FeatureSwitches.initialize() must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {v0}, Lcbs;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcof;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {v0}, Lcbs;->b()Lcof;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcbq;->h()Lcbs;

    move-result-object v0

    invoke-virtual {v0}, Lcbs;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lcbs;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcbq;->b:Lcbs;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcbq;->b:Lcbs;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FeatureSwitches.initialize() must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-static {}, Lcom/twitter/config/b;->a()J

    move-result-wide v2

    .line 271
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "feature_switches_configs_crashlytics_enabled"

    invoke-static {v1, v2}, Lcuf;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    if-lez v1, :cond_0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v1

    goto :goto_0
.end method
