.class final Lcom/twitter/database/generated/ac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbbu;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/twitter/database/generated/ac;->a:Landroid/database/Cursor;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/ab;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ac;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/database/generated/ac;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/database/generated/ac;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/database/generated/ac;->a:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/database/generated/ac;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method
