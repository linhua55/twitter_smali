.class Lazp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/q",
        "<",
        "Landroid/database/Cursor;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazn;


# direct methods
.method private constructor <init>(Lazn;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lazp;->a:Lazn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lazn;Lazo;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lazp;-><init>(Lazn;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lazp;->a(Lrx/ao;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/ao;)Lrx/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Landroid/database/Cursor;",
            ">;)",
            "Lrx/ao",
            "<-",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lazq;

    invoke-direct {v0, p0, p1, p1}, Lazq;-><init>(Lazp;Lrx/ao;Lrx/ao;)V

    return-object v0
.end method
