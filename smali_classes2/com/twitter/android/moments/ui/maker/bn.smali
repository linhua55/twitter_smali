.class Lcom/twitter/android/moments/ui/maker/bn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/w;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/bm;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bm;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bn;->a:Lcom/twitter/android/moments/ui/maker/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 54
    const-string/jumbo v0, "extra_perm_result"

    .line 55
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/PermissionResult;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bn;->a:Lcom/twitter/android/moments/ui/maker/bm;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/bm;->a(Lcom/twitter/android/moments/ui/maker/bm;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/android/PermissionResult;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/subjects/ReplaySubject;->b_(Ljava/lang/Object;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bn;->a:Lcom/twitter/android/moments/ui/maker/bm;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bm;->a(Lcom/twitter/android/moments/ui/maker/bm;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject;->b_(Ljava/lang/Object;)V

    goto :goto_0
.end method
