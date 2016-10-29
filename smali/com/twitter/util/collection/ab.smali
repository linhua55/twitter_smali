.class public final Lcom/twitter/util/collection/ab;
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


# static fields
.field private static final a:Lcom/twitter/util/collection/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ab",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/util/collection/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/util/collection/ab;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/twitter/util/collection/ab;->a:Lcom/twitter/util/collection/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static a()Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/twitter/util/collection/ab;->a:Lcom/twitter/util/collection/ab;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/twitter/util/collection/ab;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ab;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/util/collection/ab;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/collection/ab",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 117
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/util/collection/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/util/collection/ab;

    iget-object v1, p1, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Optional.empty"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/util/collection/ab;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
