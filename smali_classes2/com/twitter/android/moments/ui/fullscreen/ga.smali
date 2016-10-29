.class Lcom/twitter/android/moments/ui/fullscreen/ga;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/fy;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fy;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ga;->b:Lcom/twitter/android/moments/ui/fullscreen/fy;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ga;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ga;->b:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a(Lcom/twitter/android/moments/ui/fullscreen/fy;)Lcom/twitter/android/moments/ui/fullscreen/fb;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ga;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/a;

    invoke-interface {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/fb;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ga;->b:Lcom/twitter/android/moments/ui/fullscreen/fy;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a(Lcom/twitter/android/moments/ui/fullscreen/fy;)Lcom/twitter/android/moments/ui/fullscreen/fb;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/fb;->b()V

    .line 163
    return-void
.end method
