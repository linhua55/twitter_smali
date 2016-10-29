.class public Larc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Larc;->a:[Ljava/lang/String;

    .line 11
    iput-object p2, p0, Larc;->b:[Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Larc;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Larc;->b:[Ljava/lang/String;

    return-object v0
.end method
