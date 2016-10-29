.class final Lgo;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lgs;

.field public final b:Lgo;

.field public final c:I

.field public final d:I


# direct methods
.method constructor <init>(Lgs;Lgo;)V
    .locals 1

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Lgo;->a:Lgs;

    .line 1203
    iput-object p2, p0, Lgo;->b:Lgo;

    .line 1204
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lgo;->d:I

    .line 1205
    invoke-virtual {p1}, Lgs;->hashCode()I

    move-result v0

    iput v0, p0, Lgo;->c:I

    .line 1206
    return-void

    .line 1204
    :cond_0
    iget v0, p2, Lgo;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(III)Lgs;
    .locals 3

    .prologue
    .line 1209
    iget v0, p0, Lgo;->c:I

    if-ne v0, p1, :cond_1

    .line 1210
    iget-object v0, p0, Lgo;->a:Lgs;

    invoke-virtual {v0, p2, p3}, Lgs;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lgo;->a:Lgs;

    .line 1222
    :cond_0
    :goto_0
    return-object v0

    .line 1214
    :cond_1
    iget-object v0, p0, Lgo;->b:Lgo;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1215
    iget v0, v1, Lgo;->c:I

    if-ne v0, p1, :cond_2

    .line 1216
    iget-object v0, v1, Lgo;->a:Lgs;

    .line 1217
    invoke-virtual {v0, p2, p3}, Lgs;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    :cond_2
    iget-object v0, v1, Lgo;->b:Lgo;

    move-object v1, v0

    goto :goto_1

    .line 1222
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I[II)Lgs;
    .locals 3

    .prologue
    .line 1226
    iget v0, p0, Lgo;->c:I

    if-ne v0, p1, :cond_1

    .line 1227
    iget-object v0, p0, Lgo;->a:Lgs;

    invoke-virtual {v0, p2, p3}, Lgs;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lgo;->a:Lgs;

    .line 1239
    :cond_0
    :goto_0
    return-object v0

    .line 1231
    :cond_1
    iget-object v0, p0, Lgo;->b:Lgo;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1232
    iget v0, v1, Lgo;->c:I

    if-ne v0, p1, :cond_2

    .line 1233
    iget-object v0, v1, Lgo;->a:Lgs;

    .line 1234
    invoke-virtual {v0, p2, p3}, Lgs;->a([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1231
    :cond_2
    iget-object v0, v1, Lgo;->b:Lgo;

    move-object v1, v0

    goto :goto_1

    .line 1239
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
