.class Lcci;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lccc;

.field private final b:Landroid/location/Location;

.field private final c:I


# direct methods
.method private constructor <init>(Lccc;Landroid/location/Location;I)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p1, p0, Lcci;->a:Lccc;

    .line 775
    iput-object p2, p0, Lcci;->b:Landroid/location/Location;

    .line 776
    iput p3, p0, Lcci;->c:I

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Lccc;Landroid/location/Location;ILccg;)V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0, p1, p2, p3}, Lcci;-><init>(Lccc;Landroid/location/Location;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcci;->c:I

    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    return-void

    .line 783
    :pswitch_0
    iget-object v0, p0, Lcci;->a:Lccc;

    iget-object v1, p0, Lcci;->b:Landroid/location/Location;

    invoke-interface {v0, v1}, Lccc;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 787
    :pswitch_1
    iget-object v0, p0, Lcci;->a:Lccc;

    iget-object v1, p0, Lcci;->b:Landroid/location/Location;

    invoke-interface {v0, v1}, Lccc;->b(Landroid/location/Location;)V

    goto :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
