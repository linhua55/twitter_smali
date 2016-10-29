.class Lcom/twitter/android/moments/ui/fullscreen/bz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bz;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bz;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 195
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bz;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->b(Lcom/twitter/android/moments/ui/fullscreen/by;)Lahs;

    move-result-object v0

    invoke-virtual {v0}, Lahs;->b()V

    .line 196
    return-void
.end method
