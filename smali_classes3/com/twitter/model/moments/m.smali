.class public final Lcom/twitter/model/moments/m;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/k;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/moments/i;

.field b:Lcom/twitter/model/moments/i;

.field c:Lcom/twitter/model/moments/i;

.field d:Lcom/twitter/model/moments/i;

.field e:Lcom/twitter/util/math/Size;

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 96
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    return-void
.end method

.method private static a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;
    .locals 1

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/twitter/model/moments/i;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/m;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/twitter/model/moments/m;

    invoke-direct {v0}, Lcom/twitter/model/moments/m;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/moments/k;->f:Lcom/twitter/model/moments/g;

    .line 111
    invoke-static {v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->d(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/k;->c:Lcom/twitter/model/moments/g;

    .line 112
    invoke-static {v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/k;->d:Lcom/twitter/model/moments/g;

    .line 113
    invoke-static {v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->b(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/k;->e:Lcom/twitter/model/moments/g;

    .line 114
    invoke-static {v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/model/moments/g;)Lcom/twitter/model/moments/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->c(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/moments/k;->h:Z

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->a(Z)Lcom/twitter/model/moments/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/k;->g:Lcom/twitter/util/math/Size;

    .line 116
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public static a(Lcom/twitter/util/math/c;Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/twitter/util/math/c;->a(Lcom/twitter/util/math/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/twitter/model/moments/m;

    invoke-direct {v1}, Lcom/twitter/model/moments/m;-><init>()V

    .line 104
    invoke-virtual {v1, p1}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;

    move-result-object v1

    .line 105
    invoke-static {v0, p1}, Lcom/twitter/model/moments/i;->a(Landroid/graphics/Rect;Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/m;->c(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;

    move-result-object v0

    .line 103
    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/twitter/model/moments/m;->a:Lcom/twitter/model/moments/i;

    .line 122
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    .line 146
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/twitter/model/moments/m;->f:Z

    .line 152
    return-object p0
.end method

.method public b(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/model/moments/m;->b:Lcom/twitter/model/moments/i;

    .line 128
    return-object p0
.end method

.method public c(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/model/moments/m;->c:Lcom/twitter/model/moments/i;

    .line 134
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/twitter/model/moments/m;->e()Lcom/twitter/model/moments/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/twitter/model/moments/i;)Lcom/twitter/model/moments/m;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/twitter/model/moments/m;->d:Lcom/twitter/model/moments/i;

    .line 140
    return-object p0
.end method

.method protected e()Lcom/twitter/model/moments/k;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/model/moments/m;->a:Lcom/twitter/model/moments/i;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/twitter/model/moments/m;->a:Lcom/twitter/model/moments/i;

    iget-object v1, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/i;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/i;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/moments/m;->b:Lcom/twitter/model/moments/i;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/twitter/model/moments/m;->b:Lcom/twitter/model/moments/i;

    iget-object v1, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/i;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/i;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/moments/m;->c:Lcom/twitter/model/moments/i;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/twitter/model/moments/m;->c:Lcom/twitter/model/moments/i;

    iget-object v1, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/i;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/i;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/moments/m;->d:Lcom/twitter/model/moments/i;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/twitter/model/moments/m;->d:Lcom/twitter/model/moments/i;

    iget-object v1, p0, Lcom/twitter/model/moments/m;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/i;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/i;

    .line 171
    :cond_3
    new-instance v0, Lcom/twitter/model/moments/k;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/k;-><init>(Lcom/twitter/model/moments/m;)V

    return-object v0
.end method
