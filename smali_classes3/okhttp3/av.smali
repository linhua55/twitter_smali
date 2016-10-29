.class public Lokhttp3/av;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lokhttp3/HttpUrl;

.field private b:Ljava/lang/String;

.field private c:Lokhttp3/aj;

.field private d:Lokhttp3/aw;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lokhttp3/av;->b:Ljava/lang/String;

    .line 128
    new-instance v0, Lokhttp3/aj;

    invoke-direct {v0}, Lokhttp3/aj;-><init>()V

    iput-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    .line 129
    return-void
.end method

.method private constructor <init>(Lokhttp3/at;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Lokhttp3/at;->a(Lokhttp3/at;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->a:Lokhttp3/HttpUrl;

    .line 133
    invoke-static {p1}, Lokhttp3/at;->b(Lokhttp3/at;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->b:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lokhttp3/at;->c(Lokhttp3/at;)Lokhttp3/aw;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->d:Lokhttp3/aw;

    .line 135
    invoke-static {p1}, Lokhttp3/at;->d(Lokhttp3/at;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->e:Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Lokhttp3/at;->e(Lokhttp3/at;)Lokhttp3/ah;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ah;->b()Lokhttp3/aj;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    .line 137
    invoke-static {p1}, Lokhttp3/at;->f(Lokhttp3/at;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->f:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/at;Lokhttp3/au;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lokhttp3/av;-><init>(Lokhttp3/at;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/av;)Lokhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->a:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/av;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/av;)Lokhttp3/aj;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/av;)Lokhttp3/aw;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->d:Lokhttp3/aw;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/av;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/av;->f:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/at;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/av;->a:Lokhttp3/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    new-instance v0, Lokhttp3/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/at;-><init>(Lokhttp3/av;Lokhttp3/au;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/av;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_1
    :goto_0
    invoke-static {p1}, Lokhttp3/HttpUrl;->e(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 163
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0, v0}, Lokhttp3/av;->a(Lokhttp3/HttpUrl;)Lokhttp3/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    invoke-virtual {v0, p1, p2}, Lokhttp3/aj;->c(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aj;

    .line 186
    return-object p0
.end method

.method public a(Ljava/lang/String;Lokhttp3/aw;)Lokhttp3/av;
    .locals 3

    .prologue
    .line 261
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lokhttp3/av;->f:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lokhttp3/at;->a(Ljava/lang/Boolean;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lokhttp3/av;->f:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lokhttp3/at;->b(Ljava/lang/Boolean;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_3
    iput-object p1, p0, Lokhttp3/av;->b:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lokhttp3/av;->d:Lokhttp3/aw;

    .line 271
    return-object p0
.end method

.method public a(Lokhttp3/HttpUrl;)Lokhttp3/av;
    .locals 2

    .prologue
    .line 141
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lokhttp3/av;->a:Lokhttp3/HttpUrl;

    .line 143
    return-object p0
.end method

.method public a(Lokhttp3/ah;)Lokhttp3/av;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p1}, Lokhttp3/ah;->b()Lokhttp3/aj;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    .line 209
    return-object p0
.end method

.method public a(Z)Lokhttp3/av;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/av;->f:Ljava/lang/Boolean;

    .line 217
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/av;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    invoke-virtual {v0, p1}, Lokhttp3/aj;->b(Ljava/lang/String;)Lokhttp3/aj;

    .line 203
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/av;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lokhttp3/av;->c:Lokhttp3/aj;

    invoke-virtual {v0, p1, p2}, Lokhttp3/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aj;

    .line 198
    return-object p0
.end method
