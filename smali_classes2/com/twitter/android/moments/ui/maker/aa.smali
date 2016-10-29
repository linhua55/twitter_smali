.class Lcom/twitter/android/moments/ui/maker/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/z;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/z;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/aa;->b:Lcom/twitter/android/moments/ui/maker/z;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/aa;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aa;->b:Lcom/twitter/android/moments/ui/maker/z;

    .line 49
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/z;->a(Lcom/twitter/android/moments/ui/maker/z;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aa;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "extra_initial_page_id"

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/aa;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 51
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v2

    sget-object v3, Lcom/twitter/model/moments/ak;->a:Lcom/twitter/util/serialization/ah;

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_preview_mode"

    const/4 v3, 0x1

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aa;->b:Lcom/twitter/android/moments/ui/maker/z;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/z;->a(Lcom/twitter/android/moments/ui/maker/z;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
