.class public abstract Lcom/twitter/util/serialization/d;
.super Lcom/twitter/util/serialization/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lcom/twitter/util/object/h",
        "<TT;>;>",
        "Lcom/twitter/util/serialization/ae",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/util/serialization/ae;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/twitter/util/serialization/ae;-><init>(I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TB;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected abstract b()Lcom/twitter/util/object/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method protected final b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/twitter/util/serialization/d;->b()Lcom/twitter/util/object/h;

    move-result-object v0

    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/util/serialization/d;->b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V

    .line 33
    invoke-virtual {v0}, Lcom/twitter/util/object/h;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TB;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/util/serialization/d;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/twitter/util/serialization/OptionalFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
