.class final Lcom/twitter/database/generated/ph;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbir;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/twitter/database/generated/ph;->a:Landroid/database/Cursor;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/pg;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ph;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/database/generated/ph;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/database/generated/ph;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/database/generated/ph;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/database/generated/ph;->a:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method
