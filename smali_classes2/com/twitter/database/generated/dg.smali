.class final Lcom/twitter/database/generated/dg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbdo;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/df;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/dg;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 160
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    iget-object v1, p0, Lcom/twitter/database/generated/dg;->a:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
