.class Lcom/twitter/android/moments/ui/fullscreen/ic;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/id;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ib;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ib;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ic;->a:Lcom/twitter/android/moments/ui/fullscreen/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ic;->a:Lcom/twitter/android/moments/ui/fullscreen/ib;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ib;->a(Lcom/twitter/android/moments/ui/fullscreen/ib;)Lcom/twitter/android/card/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/android/card/d;->c(Ljava/lang/String;)V

    .line 30
    return-void
.end method
