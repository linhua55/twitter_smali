.class Lcom/twitter/android/moments/ui/fullscreen/as;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/model/moments/a;",
        "Lrx/w",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laev;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/ar;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ar;Laev;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->b:Lcom/twitter/android/moments/ui/fullscreen/ar;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->a:Laev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lcom/twitter/model/moments/a;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/as;->a(Lcom/twitter/model/moments/a;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/a;)Lrx/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/a;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->a:Laev;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->b(Laev;Lcom/twitter/model/moments/a;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->b:Lcom/twitter/android/moments/ui/fullscreen/ar;

    .line 77
    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/ar;->b(Lcom/twitter/android/moments/ui/fullscreen/ar;)Lcom/twitter/android/moments/ui/fullscreen/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->b:Lcom/twitter/android/moments/ui/fullscreen/ar;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Lcom/twitter/android/moments/ui/fullscreen/ar;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/as;->b:Lcom/twitter/android/moments/ui/fullscreen/ar;

    .line 78
    invoke-static {v3}, Lcom/twitter/android/moments/ui/fullscreen/ar;->a(Lcom/twitter/android/moments/ui/fullscreen/ar;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3, p1}, Lcom/twitter/android/moments/ui/fullscreen/ai;->a(Landroid/content/res/Resources;Landroid/support/v4/app/FragmentManager;Lcom/twitter/model/moments/a;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 76
    return-object v0
.end method
