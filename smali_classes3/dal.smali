.class final Ldal;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Ldau;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ldau;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ldal;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Ldal;->b:Ldau;

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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ldam;

    invoke-direct {v0, p0}, Ldam;-><init>(Ldal;)V

    return-object v0
.end method
