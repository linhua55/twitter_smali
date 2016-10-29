.class public abstract Lavo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lavm",
        "<TT;>;T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lavm",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private final a:Lavm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lavm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lavo;->a:Lavm;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

.method public a(Lavg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavg",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lavp;

    invoke-direct {v0, p0, p1}, Lavp;-><init>(Lavo;Lavg;)V

    .line 29
    iget-object v1, p0, Lavo;->a:Lavm;

    invoke-interface {v1, v0}, Lavm;->a(Lavg;)V

    .line 30
    return-void
.end method

.method protected b()Lavm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lavo;->a:Lavm;

    return-object v0
.end method
