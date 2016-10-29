.class public Lab;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:[Lac;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Lac;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lab;->a:Ljava/lang/String;

    .line 83
    iput p2, p0, Lab;->b:I

    .line 84
    iput-object p3, p0, Lab;->c:[Lac;

    .line 85
    return-void
.end method
