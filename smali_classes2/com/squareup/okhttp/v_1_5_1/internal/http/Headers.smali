.class public final Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->access$000(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->access$000(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;-><init>(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)V

    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 132
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    aget-object v0, p0, v0

    .line 136
    :goto_1
    return-object v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/util/Set;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;-><init>()V

    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 109
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->build()Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;

    move-result-object v0

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    mul-int/lit8 v0, p1, 0x2

    .line 65
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 83
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;-><init>()V

    .line 118
    # getter for: Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->namesAndValues:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;->access$000(Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 74
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->namesAndValues:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    :cond_0
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v_1_5_1/internal/http/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
