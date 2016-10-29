.class final Ldan;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TOUT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lczn;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lczn;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Ldan;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Ldan;->b:Lczn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TOUT;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ldao;

    invoke-direct {v0, p0}, Ldao;-><init>(Ldan;)V

    return-object v0
.end method
