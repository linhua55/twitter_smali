.class Lcom/twitter/util/collection/ImmutableMap$SortedImmutableMap;
.super Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/collection/ax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap",
        "<TK;TV;>;",
        "Lcom/twitter/util/collection/ax",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x15043afe286a9439L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;-><init>()V

    .line 391
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;-><init>(Ljava/util/Map;)V

    .line 395
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/twitter/util/collection/ImmutableMap$SortedImmutableMap;->mMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ax;

    invoke-interface {v0}, Lcom/twitter/util/collection/ax;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
