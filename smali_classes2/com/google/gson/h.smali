.class Lcom/google/gson/h;
.super Lcom/google/gson/s;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/s",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/d;


# direct methods
.method constructor <init>(Lcom/google/gson/d;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/gson/h;->a:Lcom/google/gson/d;

    invoke-direct {p0}, Lcom/google/gson/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/a;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->f()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->j()V

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/gson/stream/c;Ljava/lang/Number;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/google/gson/stream/c;->f()Lcom/google/gson/stream/c;

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/google/gson/h;->a:Lcom/google/gson/d;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/gson/d;->a(Lcom/google/gson/d;D)V

    .line 292
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/c;->a(Ljava/lang/Number;)Lcom/google/gson/stream/c;

    goto :goto_0
.end method

.method public synthetic read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/gson/h;->a(Lcom/google/gson/stream/a;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/h;->a(Lcom/google/gson/stream/c;Ljava/lang/Number;)V

    return-void
.end method
