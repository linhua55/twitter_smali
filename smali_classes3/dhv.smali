.class public abstract Ldhv;
.super Ldhl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldhl",
        "<TT;",
        "Ljava/util/TreeSet",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ldhl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Ldhv;->a()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method
