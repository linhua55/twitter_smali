.class public Lbsp;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field protected static final a:J

.field private static f:Lbsp;


# instance fields
.field protected b:Z

.field protected c:Z

.field protected d:I

.field protected e:Lcom/twitter/util/math/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lbsp;->a:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lbsq;

    invoke-direct {v0, p0}, Lbsq;-><init>(Lbsp;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 122
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    new-instance v1, Lbsr;

    invoke-direct {v1, p0}, Lbsr;-><init>(Lbsp;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 128
    return-void
.end method

.method public static declared-synchronized a()Lbsp;
    .locals 2

    .prologue
    .line 132
    const-class v1, Lbsp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbsp;->f:Lbsp;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lbsp;

    invoke-direct {v0}, Lbsp;-><init>()V

    sput-object v0, Lbsp;->f:Lbsp;

    .line 135
    :cond_0
    sget-object v0, Lbsp;->f:Lbsp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 146
    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "inject_ptr_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    const-string/jumbo v2, "inject_ptr_order"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string/jumbo v3, "inject_ptr_index"

    const-string/jumbo v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 163
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    if-ltz v3, :cond_2

    array-length v4, v2

    if-lt v3, v4, :cond_3

    .line 166
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "inject_ptr_index"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 170
    :cond_3
    add-int/lit8 v0, v3, 0x1

    array-length v4, v2

    rem-int/2addr v0, v4

    .line 171
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "inject_ptr_index"

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 180
    iget-boolean v0, p0, Lbsp;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbsp;->c:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lbsp;->c()V

    .line 183
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 399
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->b()I

    move-result v0

    iput v0, p0, Lbsp;->d:I

    .line 400
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->e()Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lbsp;->e:Lcom/twitter/util/math/Size;

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsp;->b:Z

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsp;->c:Z

    .line 403
    return-void
.end method
