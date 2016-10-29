.class public Ltv/periscope/android/library/b;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static volatile a:Ltv/periscope/android/library/b;


# instance fields
.field private final b:Ltv/periscope/android/library/d;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private d:Ltv/periscope/android/ui/broadcast/au;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ltv/periscope/android/library/d;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Ltv/periscope/android/library/b;->b:Ltv/periscope/android/library/d;

    .line 53
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Landroid/app/Application;

    invoke-direct {p0, p1}, Ltv/periscope/android/library/b;->a(Landroid/app/Application;)V

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Context must be an instance of Application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "Periscope Library Prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ltv/periscope/android/library/b;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call Periscope.initialize before calling getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    sget-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/library/b;)Ltv/periscope/android/ui/broadcast/au;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Ltv/periscope/android/library/b;->d:Ltv/periscope/android/ui/broadcast/au;

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/library/b;Ltv/periscope/android/ui/broadcast/au;)Ltv/periscope/android/ui/broadcast/au;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Ltv/periscope/android/library/b;->d:Ltv/periscope/android/ui/broadcast/au;

    return-object p1
.end method

.method private a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ltv/periscope/android/library/c;

    invoke-direct {v0, p0}, Ltv/periscope/android/library/c;-><init>(Ltv/periscope/android/library/b;)V

    iput-object v0, p0, Ltv/periscope/android/library/b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 111
    iget-object v0, p0, Ltv/periscope/android/library/b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;Ltv/periscope/android/library/d;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Ltv/periscope/android/library/b;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ltv/periscope/android/library/b;

    invoke-direct {v0, p0, p1}, Ltv/periscope/android/library/b;-><init>(Landroid/content/Context;Ltv/periscope/android/library/d;)V

    sput-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    .line 44
    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Periscope.initialize has already been called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ltv/periscope/android/library/b;->a:Ltv/periscope/android/library/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c()Ldmm;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ltv/periscope/android/library/b;->d:Ltv/periscope/android/ui/broadcast/au;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ltv/periscope/android/ui/broadcast/au;

    iget-object v1, p0, Ltv/periscope/android/library/b;->b:Ltv/periscope/android/library/d;

    invoke-direct {v0, v1}, Ltv/periscope/android/ui/broadcast/au;-><init>(Ltv/periscope/android/library/d;)V

    iput-object v0, p0, Ltv/periscope/android/library/b;->d:Ltv/periscope/android/ui/broadcast/au;

    .line 119
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/library/b;->d:Ltv/periscope/android/ui/broadcast/au;

    return-object v0
.end method
