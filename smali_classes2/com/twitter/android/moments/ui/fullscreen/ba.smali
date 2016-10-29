.class Lcom/twitter/android/moments/ui/fullscreen/ba;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        "Lcom/twitter/library/view/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/ax;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ax;J)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ba;->b:Lcom/twitter/android/moments/ui/fullscreen/ax;

    iput-wide p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ba;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/view/m;
    .locals 7

    .prologue
    .line 269
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/bk;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ba;->b:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/app/Activity;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/moments/ui/fullscreen/ba;->a:J

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ba;->b:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->b(Lcom/twitter/android/moments/ui/fullscreen/ax;)Lcom/twitter/android/moments/ui/fullscreen/am;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/moments/ui/fullscreen/bk;-><init>(Landroid/content/Context;Lcom/twitter/model/core/Tweet;JLcom/twitter/android/moments/ui/fullscreen/gh;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    check-cast p1, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ba;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/view/m;

    move-result-object v0

    return-object v0
.end method
