.class final Lcom/twitter/database/generated/fl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbem;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeq;

.field private final c:Lbeo;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/twitter/database/generated/fl;->a:Landroid/database/Cursor;

    .line 228
    new-instance v0, Lcom/twitter/database/generated/fm;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/fm;-><init>(Lcom/twitter/database/generated/fl;)V

    iput-object v0, p0, Lcom/twitter/database/generated/fl;->b:Lbeq;

    .line 445
    new-instance v0, Lcom/twitter/database/generated/fn;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/fn;-><init>(Lcom/twitter/database/generated/fl;)V

    iput-object v0, p0, Lcom/twitter/database/generated/fl;->c:Lbeo;

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/fk;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/fl;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/database/generated/fl;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/twitter/database/generated/fl;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
