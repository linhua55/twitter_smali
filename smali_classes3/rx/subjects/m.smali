.class public final Lrx/subjects/m;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lrx/subjects/n;

.field static final d:Lrx/subjects/m;

.field static final e:Lrx/subjects/m;


# instance fields
.field final a:Z

.field final b:[Lrx/subjects/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lrx/subjects/n;

    sput-object v0, Lrx/subjects/m;->c:[Lrx/subjects/n;

    .line 154
    new-instance v0, Lrx/subjects/m;

    const/4 v1, 0x1

    sget-object v2, Lrx/subjects/m;->c:[Lrx/subjects/n;

    invoke-direct {v0, v1, v2}, Lrx/subjects/m;-><init>(Z[Lrx/subjects/n;)V

    sput-object v0, Lrx/subjects/m;->d:Lrx/subjects/m;

    .line 155
    new-instance v0, Lrx/subjects/m;

    sget-object v1, Lrx/subjects/m;->c:[Lrx/subjects/n;

    invoke-direct {v0, v3, v1}, Lrx/subjects/m;-><init>(Z[Lrx/subjects/n;)V

    sput-object v0, Lrx/subjects/m;->e:Lrx/subjects/m;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/n;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lrx/subjects/m;->a:Z

    .line 159
    iput-object p2, p0, Lrx/subjects/m;->b:[Lrx/subjects/n;

    .line 160
    return-void
.end method


# virtual methods
.method public a(Lrx/subjects/n;)Lrx/subjects/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lrx/subjects/m;->b:[Lrx/subjects/n;

    .line 163
    array-length v0, v0

    .line 164
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lrx/subjects/n;

    .line 165
    iget-object v2, p0, Lrx/subjects/m;->b:[Lrx/subjects/n;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput-object p1, v1, v0

    .line 167
    new-instance v0, Lrx/subjects/m;

    iget-boolean v2, p0, Lrx/subjects/m;->a:Z

    invoke-direct {v0, v2, v1}, Lrx/subjects/m;-><init>(Z[Lrx/subjects/n;)V

    return-object v0
.end method

.method public b(Lrx/subjects/n;)Lrx/subjects/m;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v5, p0, Lrx/subjects/m;->b:[Lrx/subjects/n;

    .line 171
    array-length v6, v5

    .line 172
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    aget-object v0, v5, v4

    if-ne v0, p1, :cond_1

    .line 173
    sget-object p0, Lrx/subjects/m;->e:Lrx/subjects/m;

    .line 197
    :cond_0
    :goto_0
    return-object p0

    .line 175
    :cond_1
    if-eqz v6, :cond_0

    .line 178
    add-int/lit8 v0, v6, -0x1

    new-array v2, v0, [Lrx/subjects/n;

    move v3, v4

    move v1, v4

    .line 180
    :goto_1
    if-ge v3, v6, :cond_2

    .line 181
    aget-object v7, v5, v3

    .line 182
    if-eq v7, p1, :cond_5

    .line 183
    add-int/lit8 v0, v6, -0x1

    if-eq v1, v0, :cond_0

    .line 186
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v2, v1

    .line 180
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 189
    :cond_2
    if-nez v1, :cond_3

    .line 190
    sget-object p0, Lrx/subjects/m;->e:Lrx/subjects/m;

    goto :goto_0

    .line 192
    :cond_3
    add-int/lit8 v0, v6, -0x1

    if-ge v1, v0, :cond_4

    .line 193
    new-array v0, v1, [Lrx/subjects/n;

    .line 194
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :goto_3
    new-instance v1, Lrx/subjects/m;

    iget-boolean v2, p0, Lrx/subjects/m;->a:Z

    invoke-direct {v1, v2, v0}, Lrx/subjects/m;-><init>(Z[Lrx/subjects/n;)V

    move-object p0, v1

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method
