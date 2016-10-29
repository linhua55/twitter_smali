.class public Lcom/twitter/android/moments/ui/fullscreen/e;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lrx/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lrx/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lrx/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lrx/subjects/ReplaySubject;->q()Lrx/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/e;->a:Lrx/subjects/ReplaySubject;

    .line 21
    invoke-static {p1}, Lrx/w;->a(Ljava/util/concurrent/Callable;)Lrx/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/w;->b(Lrx/t;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/e;->a:Lrx/subjects/ReplaySubject;

    invoke-virtual {v0, v1}, Lrx/w;->a(Lrx/r;)Lrx/ap;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/e;->a:Lrx/subjects/ReplaySubject;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject;->o()Ldkt;

    move-result-object v0

    invoke-virtual {v0}, Ldkt;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
