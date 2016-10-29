.class public Ltv/periscope/android/session/Session;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ltv/periscope/android/session/Session$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltv/periscope/android/session/Session$Type;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltv/periscope/android/session/Session;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Ltv/periscope/android/session/Session;->b:Ltv/periscope/android/session/Session$Type;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ltv/periscope/android/session/Session;->a:Ljava/lang/String;

    return-object v0
.end method
