.class public Lcom/twitter/library/card/am;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/twitter/library/card/al;


# direct methods
.method protected constructor <init>(Lcom/twitter/library/card/al;)V
    .locals 1

    .prologue
    .line 23
    iput-object p1, p0, Lcom/twitter/library/card/am;->c:Lcom/twitter/library/card/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/am;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method
