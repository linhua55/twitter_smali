.class Lavp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lavg;

.field final synthetic b:Lavo;


# direct methods
.method constructor <init>(Lavo;Lavg;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lavp;->b:Lavo;

    iput-object p2, p0, Lavp;->a:Lavg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lavp;->a:Lavg;

    iget-object v1, p0, Lavp;->b:Lavo;

    invoke-virtual {v1, p1}, Lavo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lavg;->a(Ljava/lang/Object;)V

    .line 27
    return-void
.end method
