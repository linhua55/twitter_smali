.class Lcom/twitter/app/main/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/twitter/app/main/d;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 499
    const-string/jumbo v0, "data_usage_meter"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string/jumbo v0, "data_usage_meter"

    const/4 v1, 0x0

    .line 501
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 500
    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->a(Z)Z

    .line 502
    invoke-static {}, Lbjn;->a()Lbjn;

    move-result-object v0

    invoke-static {}, Lcom/twitter/app/main/MainActivity;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lbjn;->a(Z)V

    .line 504
    :cond_0
    return-void
.end method
