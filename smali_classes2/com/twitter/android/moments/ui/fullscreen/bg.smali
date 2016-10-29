.class Lcom/twitter/android/moments/ui/fullscreen/bg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/i",
        "<",
        "Lcom/twitter/moments/core/ui/widget/sectionpager/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/m;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/bf;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bg;->b:Lcom/twitter/android/moments/ui/fullscreen/bf;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bg;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/moments/core/ui/widget/sectionpager/d;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bg;->b:Lcom/twitter/android/moments/ui/fullscreen/bf;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/bf;->a(Lcom/twitter/android/moments/ui/fullscreen/bf;)Lcom/twitter/android/moments/ui/fullscreen/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bg;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/gp;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/bg;->a()Lcom/twitter/moments/core/ui/widget/sectionpager/d;

    move-result-object v0

    return-object v0
.end method
