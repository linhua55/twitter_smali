.class Lcom/twitter/android/util/ai;
.super Lcom/twitter/library/service/ac;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/ac",
        "<",
        "Ljava/lang/Void;",
        "Lcom/twitter/library/api/activity/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/util/ah;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/ah;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/twitter/android/util/ai;->a:Lcom/twitter/android/util/ah;

    invoke-direct {p0}, Lcom/twitter/library/service/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Lcom/twitter/library/api/activity/d;

    invoke-virtual {p0, p1}, Lcom/twitter/android/util/ai;->a(Lcom/twitter/library/api/activity/d;)V

    return-void
.end method

.method public a(Lcom/twitter/library/api/activity/d;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/android/util/ai;->a:Lcom/twitter/android/util/ah;

    invoke-static {v0}, Lcom/twitter/android/util/ah;->a(Lcom/twitter/android/util/ah;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    .line 151
    return-void
.end method
