.class public Lazb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/g;


# instance fields
.field public final a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/twitter/config/h;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lazc;

    invoke-direct {v0, p0}, Lazc;-><init>(Lazb;)V

    iput-object v0, p0, Lazb;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lazb;->b:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lazb;->d:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lazb;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lazb;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 46
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    invoke-static {v1, v0}, Lcnv;->a(Ljava/lang/String;Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 56
    iget-object v3, p0, Lazb;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcnv;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    invoke-direct {p0, p2, v1}, Lazb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    :try_start_0
    invoke-static {p2, v0}, Lcnv;->a(Ljava/lang/String;Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcnv;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lazb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lazb;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lazb;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lazb;->c:Lcom/twitter/config/h;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lazb;->c:Lcom/twitter/config/h;

    invoke-interface {v0}, Lcom/twitter/config/h;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lazb;->d:Landroid/content/Context;

    const-string/jumbo v1, "fs_override"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JLjava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    return-void
.end method

.method public a(Lcom/twitter/config/h;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lazb;->c:Lcom/twitter/config/h;

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lazb;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
