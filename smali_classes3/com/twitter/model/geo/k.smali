.class public final Lcom/twitter/model/geo/k;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/geo/TwitterPlace;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

.field c:Ljava/lang/String;

.field d:Lcom/twitter/model/geo/VendorInfo;

.field e:Ljava/lang/String;

.field f:Lcom/twitter/model/geo/a;

.field g:Lcom/twitter/model/geo/d;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Lcom/twitter/model/geo/TwitterPlace;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/model/geo/k;->a:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/twitter/model/geo/TwitterPlace$PlaceType;->f:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/model/geo/k;->c:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/twitter/model/geo/VendorInfo;->b:Lcom/twitter/model/geo/VendorInfo;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->d:Lcom/twitter/model/geo/VendorInfo;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/geo/TwitterPlace$PlaceType;)Lcom/twitter/model/geo/k;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/model/geo/k;->b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->b:Lcom/twitter/model/geo/TwitterPlace$PlaceType;

    .line 131
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/twitter/model/geo/k;->j:Lcom/twitter/model/geo/TwitterPlace;

    .line 179
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/VendorInfo;)Lcom/twitter/model/geo/k;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/model/geo/k;->d:Lcom/twitter/model/geo/VendorInfo;

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/VendorInfo;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->d:Lcom/twitter/model/geo/VendorInfo;

    .line 137
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/a;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/twitter/model/geo/k;->f:Lcom/twitter/model/geo/a;

    .line 155
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/d;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/twitter/model/geo/k;->g:Lcom/twitter/model/geo/d;

    .line 161
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/model/geo/k;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->a:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/model/geo/k;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/geo/k;->c:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/twitter/model/geo/k;->e:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/twitter/model/geo/k;->e()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/model/geo/k;->h:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method protected e()Lcom/twitter/model/geo/TwitterPlace;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/twitter/model/geo/TwitterPlace;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/geo/TwitterPlace;-><init>(Lcom/twitter/model/geo/k;Lcom/twitter/model/geo/j;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/twitter/model/geo/k;->i:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/twitter/model/geo/k;->k:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/geo/k;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/twitter/model/geo/k;->l:Ljava/lang/String;

    .line 191
    return-object p0
.end method
