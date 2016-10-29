.class Land;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanb;


# direct methods
.method private constructor <init>(Lanb;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Land;->a:Lanb;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lanb;Lanc;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Land;-><init>(Lanb;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Land;->a:Lanb;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lanb;->a(I)V

    .line 41
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Land;->a(Ljava/lang/Integer;)V

    return-void
.end method
