.class Lcom/twitter/android/moments/ui/fullscreen/cb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/ui/widget/touchintercept/d;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cb;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cb;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cb;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->b(Lcom/twitter/android/moments/ui/fullscreen/by;)Lahs;

    move-result-object v0

    invoke-virtual {v0}, Lahs;->a()V

    .line 229
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cb;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 230
    return-void
.end method
