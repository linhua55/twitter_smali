.class public Ltv/periscope/android/session/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/session/a;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Ltv/periscope/android/session/Session;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltv/periscope/android/session/b;->a:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Ltv/periscope/android/session/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_session_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/session/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_session_type"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v1}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {v0}, Ldod;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v0, Ltv/periscope/android/session/Session$Type;->b:Ltv/periscope/android/session/Session$Type;

    invoke-virtual {v0}, Ltv/periscope/android/session/Session$Type;->name()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v2, p0, Ltv/periscope/android/session/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 60
    const-string/jumbo v3, "pref_session_type"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    :cond_0
    new-instance v2, Ltv/periscope/android/session/Session;

    invoke-static {v0}, Ltv/periscope/android/session/Session$Type;->valueOf(Ljava/lang/String;)Ltv/periscope/android/session/Session$Type;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ltv/periscope/android/session/Session;-><init>(Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)V

    iput-object v2, p0, Ltv/periscope/android/session/b;->b:Ltv/periscope/android/session/Session;

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ltv/periscope/android/session/Session;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/session/b;->b:Ltv/periscope/android/session/Session;

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0}, Ltv/periscope/android/session/b;->c()V

    .line 36
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/session/b;->b:Ltv/periscope/android/session/Session;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Ltv/periscope/android/session/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "pref_session_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    const-string/jumbo v1, "pref_session_type"

    invoke-virtual {p2}, Ltv/periscope/android/session/Session$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    new-instance v0, Ltv/periscope/android/session/Session;

    invoke-direct {v0, p1, p2}, Ltv/periscope/android/session/Session;-><init>(Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)V

    iput-object v0, p0, Ltv/periscope/android/session/b;->b:Ltv/periscope/android/session/Session;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Ltv/periscope/android/session/b;->a()Ltv/periscope/android/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Ltv/periscope/android/session/b;->a()Ltv/periscope/android/session/Session;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/session/Session;->a()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
