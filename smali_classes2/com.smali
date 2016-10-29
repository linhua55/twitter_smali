.class Lcom;
.super Lcom/twitter/util/serialization/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/serialization/d",
        "<",
        "Lcoj;",
        "Lcol;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/twitter/util/serialization/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcok;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcol;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/aj;Lcol;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v3

    .line 151
    invoke-static {v3}, Lcom/twitter/util/collection/MutableMap;->a(I)Ljava/util/Map;

    move-result-object v4

    move v2, v1

    .line 152
    :goto_0
    if-ge v2, v3, :cond_1

    .line 153
    sget-object v0, Lcnv;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnv;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    iget-object v5, v0, Lcnv;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v2

    .line 160
    invoke-static {v2}, Lcom/twitter/util/collection/au;->a(I)Lcom/twitter/util/collection/au;

    move-result-object v3

    move v0, v1

    .line 161
    :goto_1
    if-ge v0, v2, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_2
    sget-object v0, Lcoo;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/util/serialization/ah;->a(Lcom/twitter/util/serialization/aj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoo;

    .line 167
    new-instance v1, Lcoc;

    invoke-direct {v1}, Lcoc;-><init>()V

    .line 169
    invoke-virtual {v1, v4}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v1

    iget-object v2, v0, Lcoo;->c:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2}, Lcoc;->b(Ljava/lang/String;)Lcoc;

    move-result-object v1

    iget-object v0, v0, Lcoo;->b:Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v0}, Lcoc;->a(Ljava/lang/String;)Lcoc;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcoc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    .line 167
    invoke-virtual {p2, v0}, Lcol;->a(Lcoa;)Lcol;

    move-result-object v1

    .line 173
    invoke-virtual {v3}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcol;->a(Ljava/util/Set;)Lcol;

    .line 174
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Lcom/twitter/util/object/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    check-cast p2, Lcol;

    invoke-virtual {p0, p1, p2, p3}, Lcom;->a(Lcom/twitter/util/serialization/aj;Lcol;I)V

    return-void
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcoj;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    check-cast p2, Lcoj;

    invoke-virtual {p0, p1, p2}, Lcom;->a(Lcom/twitter/util/serialization/ak;Lcoj;)V

    return-void
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom;->a()Lcol;

    move-result-object v0

    return-object v0
.end method
