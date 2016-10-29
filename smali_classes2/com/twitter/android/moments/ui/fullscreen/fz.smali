.class Lcom/twitter/android/moments/ui/fullscreen/fz;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        "Lcom/twitter/model/moments/viewmodels/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/fy;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/fy;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fz;->b:Lcom/twitter/android/moments/ui/fullscreen/fy;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fz;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fz;->b:Lcom/twitter/android/moments/ui/fullscreen/fy;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/fz;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/moments/ui/fullscreen/fy;->a(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/fz;->a(Ljava/util/Map;)V

    return-void
.end method
