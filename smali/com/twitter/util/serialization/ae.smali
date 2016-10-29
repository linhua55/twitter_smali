.class public abstract Lcom/twitter/util/serialization/ae;
.super Lcom/twitter/util/serialization/ah;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/serialization/ah",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/util/serialization/ah;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/util/serialization/ae;->a:I

    .line 31
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/util/serialization/ah;-><init>()V

    .line 34
    if-gez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The version number is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput p1, p0, Lcom/twitter/util/serialization/ae;->a:I

    .line 38
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcvo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

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


# virtual methods
.method public final a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->k()I

    move-result v0

    .line 62
    iget v1, p0, Lcom/twitter/util/serialization/ae;->a:I

    if-le v0, v1, :cond_1

    .line 63
    new-instance v1, Lcom/twitter/util/serialization/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version number found ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") is greater than the maximum supported value ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/twitter/util/serialization/ae;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/util/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/twitter/util/serialization/ae;->b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->m()V

    goto :goto_0
.end method

.method protected abstract a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/twitter/util/serialization/aj;I)Ljava/lang/Object;
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
.end method

.method public final b(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/twitter/util/serialization/ag;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/twitter/util/serialization/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget v0, p0, Lcom/twitter/util/serialization/ae;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->b(ILjava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 48
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/util/serialization/ae;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Lcom/twitter/util/serialization/ak;->f()Lcom/twitter/util/serialization/ak;

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    iget v0, p0, Lcom/twitter/util/serialization/ae;->a:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->d(I)Lcom/twitter/util/serialization/ak;

    goto :goto_0
.end method
