.class public Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-object v0
.end method

.method private addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 158
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addLine(Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 145
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string/jumbo v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public build()Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;-><init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    :goto_1
    return-object v0

    .line 198
    :cond_0
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 183
    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    .line 193
    return-object p0
.end method
