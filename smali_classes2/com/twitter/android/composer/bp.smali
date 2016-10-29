.class final Lcom/twitter/android/composer/bp;
.super Lcom/twitter/app/common/util/i;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/app/common/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/twitter/android/composer/bo;->d()Lcom/twitter/android/composer/bo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/bo;->c(Landroid/app/Activity;)V

    .line 48
    return-void
.end method
