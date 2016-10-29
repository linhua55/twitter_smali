.class Lcom/twitter/android/revenue/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/model/timeline/ay;",
        "Lcom/twitter/model/timeline/ay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/ac;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/ac;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/twitter/android/revenue/ad;->a:Lcom/twitter/android/revenue/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/ay;)Lcom/twitter/model/timeline/ay;
    .locals 3

    .prologue
    .line 183
    instance-of v0, p1, Lcom/twitter/model/timeline/aq;

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/aq;

    .line 185
    new-instance v1, Lcom/twitter/model/timeline/as;

    invoke-direct {v1}, Lcom/twitter/model/timeline/as;-><init>()V

    iget-object v0, v0, Lcom/twitter/model/timeline/aq;->a:Lctd;

    .line 186
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/as;->a(Lctd;)Lcom/twitter/model/timeline/as;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/timeline/ay;->b:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/as;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/as;

    .line 188
    invoke-virtual {v0}, Lcom/twitter/model/timeline/as;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    .line 197
    :goto_0
    return-object v0

    .line 189
    :cond_0
    instance-of v0, p1, Lcom/twitter/model/timeline/cm;

    if-eqz v0, :cond_1

    .line 190
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cm;

    .line 191
    new-instance v1, Lcom/twitter/model/timeline/co;

    invoke-direct {v1}, Lcom/twitter/model/timeline/co;-><init>()V

    iget-object v0, v0, Lcom/twitter/model/timeline/cm;->a:Lcom/twitter/model/timeline/b;

    .line 192
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/co;->a(Lcom/twitter/model/timeline/b;)Lcom/twitter/model/timeline/co;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/timeline/ay;->b:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/co;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/co;

    .line 194
    invoke-virtual {v0}, Lcom/twitter/model/timeline/co;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    goto :goto_0

    .line 195
    :cond_1
    instance-of v0, p1, Lcom/twitter/model/timeline/cd;

    if-eqz v0, :cond_2

    .line 196
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 197
    new-instance v1, Lcom/twitter/model/timeline/cf;

    invoke-direct {v1}, Lcom/twitter/model/timeline/cf;-><init>()V

    iget-object v0, v0, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    .line 198
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/timeline/ay;->b:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 200
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered an unexpected TimelineEntity of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/twitter/model/timeline/ay;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    check-cast p1, Lcom/twitter/model/timeline/ay;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ad;->a(Lcom/twitter/model/timeline/ay;)Lcom/twitter/model/timeline/ay;

    move-result-object v0

    return-object v0
.end method
