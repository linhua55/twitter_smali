.class public Last;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasr;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lasr",
        "<TItem;>;",
        "Ljava/lang/Iterable",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final a:Lasv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lasv",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Last;->c()Lasv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Last;-><init>(Ljava/util/List;Lasv;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lasv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lasv",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Last;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Last;->b:Ljava/util/List;

    .line 22
    iput-object p2, p0, Last;->a:Lasv;

    .line 23
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static c()Lasv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item:",
            "Ljava/lang/Object;",
            ">()",
            "Lasv",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lasu;

    invoke-direct {v0}, Lasu;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Last;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Last;->b:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;II)V

    .line 47
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Last;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Last;->b:Ljava/util/List;

    .line 43
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Last;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Last;->a:Lasv;

    invoke-virtual {p0, p1}, Last;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lasv;->a(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Last;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
